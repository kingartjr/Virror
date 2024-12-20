/* VALUES TO CHANGE */

//ImageMode imageMode = ImageMode.IMAGE;
//ImageMode imageMode = ImageMode.MOVIE;
//ImageMode imageMode = ImageMode.KINECT_VIDEO;
ImageMode imageMode = ImageMode.KINECT_COLOR_DEPTH; 
Board board = Board.REAL;

boolean mirrorKinect = false; // Not yet used anywhere

String[] imagePaths = { 
  "./data/VirrorSampleSmall.jpg", 
  "./data/VirrorSampleMedium.jpg",
  "./data/VirrorSampleA.jpg",
  // Add more images here, and change imagePathIndex to point to the image you want
};
int imagePathIndex = 1;

String[] moviePaths = { 
  "movie.mp4", 
  "mov2.mov",
  "video.mp4",
  "snowflake.avi",
  "Shoot_Em_Up.mp4",
  // Add more movies here, and change moviePathIndex to point to the movie you want
};
int moviePathIndex = 4;

String[] usbPorts = { 
  "/dev/cu.usbmodem4438171",
  "COM5",
  "/dev/ttyACM0",
  // Add more port names here, and change usbPortIndex to point to the port you want
};
int usbPortIndex = 1;

enum Board {
  DEV,
  REAL
};

enum ImageMode {
  IMAGE,
  MOVIE,
  KINECT_VIDEO,
  KINECT_IR,
  KINECT_COLOR_DEPTH
};

String usbIdentifier() {
  return usbPorts[usbPortIndex];
}  

String imagePath() {
    return imagePaths[imagePathIndex];
}

String moviePath() {
    return moviePaths[moviePathIndex];
}

int boardDivisor() {
  return board == Board.DEV ? 4 : 1;
}
  
