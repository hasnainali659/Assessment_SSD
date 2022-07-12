# Assessment_SSD
Realtime Object Detection using Mobile_SSD

Clone the repository.
```
git clone https://github.com/hasnainali659/Assessment_SSD.git
```
# Object Detection Using Docker Container

1. Open terminal and traverse to the folder where docker file is located using ```cd```.
2. Build the docker image using command.
```
docker build -t assessment:1.0 .
```
3. Run ```xhost + ``` command on terminal.
4. Run docker image.
```
docker run -it -v $PWD:/app/ --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY assessment:1.0 bash
```
5. Finally, run the python detection_SSD script to observe object detection using MobileSSD in real-time.
```
python detection_SSD.py
```

# Object Detection Without Docker Container

1. Open terminal and traverse to MobileSSD folder using ``` cd ```
2. Create a virtual environment (I am using conda).
``` conda create --name assessment ```
3. Activate the virtual environment.
``` conda activate assessment ```
4. Install requirements.txt file using command.
``` pip install -r requirements.txt ```
5. Run python script using command.
``` python detection_SSD.py ```
