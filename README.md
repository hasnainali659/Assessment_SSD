# Assessment_SSD
Realtime Object Detection using Mobile_SSD

1. Clone the repository.
```
git clone https://github.com/hasnainali659/Assessment_SSD.git
```
2. Open terminal and traverse to the folder where docker file is located using cd.
3. Build the docker image using command.
```
docker build -t assessment:1.0 .

```
4. Run ```xhost + ``` command on terminal.
5. Run docker image.
```
docker run -it -v $PWD:/app/ --device=/dev/video0:/dev/video0 -v /tmp/ .X11-unix -e DISPLAY=$DISPLAY assessment:1.0 bash
```
6. Finally, run the python detection_SSD script to observe object detection using MobileSSD in real-time.
```
python detection_SSD.py
```
