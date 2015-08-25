# // Crops uploaded photo to 4:3 ratio with max width 40 and max height 330
# // Creates square thumbnail version 100*100px
# // Utilizes Sebastian Kanthakâ€™s File Column plugin for the uploads
# class Photo < ActiveRecord::Base
#   file_column :file,
#               :magick => {
#                 :size => '512x384',
#                 :crop => '4:3',
#                 :versions => {
#                     :square => {
#                                 :crop => '1:1',
#                                 :size => '128x128'}
#                               }
#                 }
# end
# added action to photo controller
// The first line finds the photo based on the id passed. 
// I also pass a direction (either left or right). 
// Based on the direction, rotates the photo 90 degrees (clockwise) or
//   -90 degrees (counter clockwise). 
// photo.file is the path to the image to be resized. 
// After determining degrees, Created new RMagick image object and
//   rotated it by degrees. image.write(photo.file) saves the rotated file.
def rotate
    photo   = Photo.find(params[:id])
    degrees = params[:direction] == â€˜leftâ€™ ? -90 : 90

    #main photo
    image   = Magick::ImageList.new(photo.file)
    image   = image.rotate(degrees)
    image.write(photo.file)
    
    # thumb
    thumb   =  RAILS_ROOT + "/public/photo/file/#{photo.id}/square/
#{File.basename(photo.file)}"
    image   = Magick::ImageList.new(thumb)
    image   = image.rotate(degrees)
    image.write(thumb)
    redirect_to :action => 'list'
end
# // Code to show the arrow images and make them link to the rotation action
# //   shown below. Happy rotating!
<%= link_to image_tag('admin/arrow_rotate_anticlockwise.gif',
 {:alt => 'Rotate Clockwise'}), 
:action => 'rotate', 
:id => photo.id, 
:direction => 'left' %>
<%= link_to image_tag('admin/arrow_rotate_clockwise.gif',
 {:alt => 'Rotate Clockwise'}),
 :action => 'rotate',
 :id => photo.id,
 :direction => 'right' %>