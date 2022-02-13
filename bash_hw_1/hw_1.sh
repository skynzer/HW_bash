 #!/bin/bash
 echo "Input folder name"
 read f_name;
 cd ./$f_name;
 echo "Input names of folders"
 read f_1 f_2 f_3
 mkdir $f_1 $f_2 $f_3
 echo "Input one of folders to enter: $f_1, $f_2, $f_3"
 read enterto
 cd ./$enterto
 echo "Input names of 3 .txt files"
 read t_1 t_2 t_3
 touch ${t_1}.txt ${t_2}.txt ${t_3}.txt
 echo "Input names of 2 .json files"
 read j_1 j_2
 touch ${j_1}.json ${j_2}.json
 ls -la

 echo "input names of two files for move ${t_1}.txt ${t_2}.txt ${t_3}.txt ${j_1}.json ${j_2}.json"
 read filename1 filename2
 echo "input folder name where move file $f_1, $f_2, $f_3"
 read foldername
 mv ./${filename1} ./${filename2} ../$foldername
 
