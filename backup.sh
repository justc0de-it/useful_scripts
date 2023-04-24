#!/bin/bash

# Создание резервной копии файлов в указанной директории
echo "Введите директорию, которую нужно скопировать:"
read source_dir
echo "Введите директорию, в которую нужно создать резервную копию:"
read dest_dir
echo "Создание резервной копии директории $source_dir в директории $dest_dir..."
cp -r $source_dir $dest_dir
echo "Резервная копия создана успешно в директории $dest_dir."

# Сжатие резервной копии в архив
echo "Хотите ли вы сжать резервную копию в архив? (y/n)"
read compress

if [ "$compress" == "y" ]
then
    echo "Введите имя архива:"
    read archive_name
    echo "Сжатие резервной копии в архив $archive_name..."
    tar -czf $archive_name.tar.gz $dest_dir
    echo "Архив создан успешно в текущей директории."
fi
