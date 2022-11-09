from pytube import YouTube
from sys import argv

link = argv[1]
yt = YouTube(link)

print("Title: ", yt.title)

print("View: ",yt.views)

print("Length: ",yt.length)

yd =  yt.streams.get_highest_resolution()

yd.download('/Users/todfod/Downloads')