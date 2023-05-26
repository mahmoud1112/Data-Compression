% Specify input video path
input_video_path = ('C:\Users\midoo\OneDrive\Desktop\semster 8\compression\Black Video00.mp4');

% Read the input video , video reader for reading frames 
video_reader = VideoReader(input_video_path);

% Specify output video path
output_video_path = ('C:\Users\midoo\OneDrive\Desktop\semster 8\compression\afterEdit1');

% Create a VideoWriter object with the desired output settings
video_writer = VideoWriter(output_video_path, 'MPEG-4'); %allows writing frames to a video file.
video_writer.FrameRate = video_reader.FrameRate; % Set the frame rate to match the input video
video_writer.Quality = 50; % Set the output video quality (0-100)

% Open the VideoWriter object for writing
open(video_writer);

% Compress each frame and write it to the output video
%checks if there are more frames available to read from the input video
while hasFrame(video_reader)
    frame = readFrame(video_reader);
    compressed_frame = imresize(frame, 0.5); % Resize the frame to reduce its size (adjust the scale factor as needed)
    writeVideo(video_writer, compressed_frame);
end

% Close the VideoWriter object
close(video_writer);




% Specify the path to the video file
videoPath = ('C:\Users\midoo\OneDrive\Desktop\semster 8\compression\Black Video00.mp4');

% Create a VideoReader object to read the video file
videoReader = VideoReader(videoPath);

% Get the video resolution before compress
videoResolution = [videoReader.Width, videoReader.Height];
disp(['Video resolution before edit: ' num2str(videoResolution(1)) 'x' num2str(videoResolution(2))]);




% Specify the path to the video file
videoPath = ('C:\Users\midoo\OneDrive\Desktop\semster 8\compression\afterEdit.mp4');

% Create a VideoReader object to read the video file
videoReader = VideoReader(videoPath);

% Get the video resolution after compress
videoResolution = [videoReader.Width, videoReader.Height];
disp(['Video resolution after edit: ' num2str(videoResolution(1)) 'x' num2str(videoResolution(2))]);


