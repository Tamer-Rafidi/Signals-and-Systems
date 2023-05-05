img = imread('ee3tp3picture2022.jpg');

% Extracting the 3 colours and scaling red and green to fix the image
Red = img(:,:,1)*5;
Green = img(:,:,2).*5;
Blue = img(:,:,3);

% Creates new image with the new colours
reconstructed_image = cat(3, Red, Green, Blue);
% Shows the new image
imshow(reconstructed_image);

% Creates a file with the new image
imwrite(reconstructed_image, 'my_fixed_image.jpg');
