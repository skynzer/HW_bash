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
 touch ${f_1}.txt ${f_2}.txt ${f_3}.txt
 echo "Input names of 2 .json files"
 read j_1 j_2
 touch ${j_1}.json ${j_2}.json
 ls -la
 i="0"
 while [ $i -lt 2 ]
 do
    echo "input file name for move ${f_1}.txt ${f_2}.txt ${f_3}.txt ${j_1}.json ${j_2}.json"
    read filename
    echo "input folder name where move file $f_1, $f_2, $f_3"
    read foldername
    mv ./$filename ../$foldername
    i=$[$i+1]
done
 
