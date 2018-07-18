progDir=cd;
imageFile='\images';
imageDir=[progDir,imageFile];
cd (imageDir)
imageStruct=dir('*.jpg');
images=cell(1,totalImageNumber);

for i=1:totalImageNumber
    images{i}=imread(imageStruct(i).name);
end

cd (progDir)
