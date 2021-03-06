function ce=overall_cross_entropy_img( img_a, img_b, img_fusn )
    % compute the overall cross entropy among source images and the fused image
    % 
    % to accomplish eq.14
    % of the paper:
    % Ganasala, Padma, and Vinod Kumar. "CT and MR image fusion scheme in nonsubsampled contourlet transform domain." Journal of digital imaging 27.3 (2014): 407-418.
    % 
    % Input:
    %   img_a, img_b: source image A and image B for fusion
    %   img_fusn: fused image from img_a and img_b
    % Output:
    %   overall cross entropy value 
    % 

    img_a = uint8(img_a);
    img_b = uint8(img_b);
    img_fusn = uint8(img_fusn);

    ce = (cross_entropy_img(img_a, img_fusn)+cross_entropy_img(img_b, img_fusn))/2;







