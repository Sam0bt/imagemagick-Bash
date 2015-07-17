#!/bin/bash


variable=$(kdialog --inputbox "Birinci Resim:");
variable1=$(kdialog --inputbox "İkinci Resim:");

if [ "$?" = 0 ]; then
montage -background '#336699' -geometry +4+4 $variable $variable1  yeniresim.jpg

	kdialog --msgbox "Resim Oluşturuldu.";
elif [ "$?" = 1 ]; then
	kdialog --sorry "İptal Edildi.";
else
	kdialog --error "Hatali";
fi;