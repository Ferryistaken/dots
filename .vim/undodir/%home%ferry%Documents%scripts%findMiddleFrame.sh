Vim�UnDo� �ݨ�\!��=5�
���Y�8gK��f�m              .                       ^��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^���    �                5�_�                       k    ����                                                                                                                                                                                                                                                                                                                                                             ^���    �               k# i need to output the image in the .cache dir, then generate a colorscheme based on it, and then delete it5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             ^��u    �                 �input=$1; ffmpeg -ss "$(bc -l <<< "$(ffprobe -loglevel error -of csv=p=0 -show_entries format=duration "$input")*0.5")" -i "$input" -frames:v 1 half.png5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             ^��     �                 �input=$1; ffmpeg -ss "$(bc -l <<< "$(ffprobe -loglevel error -of csv=p=0 -show_entries format=duration "$input")*0.5")" -i "$input" -frames:v 1 $HOME/.cache/animatedWallpaper/half.png5�_�                        .    ����                                                                                                                                                                                                                                                                                                                                                             ^��~    �                 �input=$1; ffmpeg -ss "$(bc -l <<< "$(ffprobe -loglevel error -of csv=p=0 -show_entries format=duration "$input")*0.5")" -i "$input" -frames:v 1 $HOME/.cache/animatedWallpaper/half.png;    �                      �                 .wal -i $HOME/.cache/animatedWallpaper/half.png5��