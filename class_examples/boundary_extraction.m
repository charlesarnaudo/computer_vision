A = imread('char_a.jpg');
se1 = strel('square', 5); % structure element

squareErodeA1 = imerode(A, se1);
boundary1 = imsubtract(A, squareErodeA1);

squareDilate1 = imdilate(A, se1);
boundary2 = imsubtract(squareDilate1, A);

imshowpair(boundary1, boundary2, 'montage')