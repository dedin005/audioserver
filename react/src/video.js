import React from "react";
import Hls from "hls.js";

export default class VideoPlayer extends React.Component {
    state = {
    }

    componentDidUpdate() {

        var video = this.player;
        var src='stream.m3u8';

        if (Hls.isSupported()) {
            var hls = new Hls();
            hls.loadSource(src);
            hls.attachMedia(video);
        }

        else if (video.canPlayType("application/vnd.apple.mpegurl")) {
          video.src = src;
        }

    }
    
    render() {
        return (
            <video
                className="video"
                ref={player => (this.player = player)}
                controls={true}
                autoPlay={true}
                loop={true}
            />
        )
    }
}