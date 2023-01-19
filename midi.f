    : midi
    
    1000 cccc \ set up the MIDI channel
    0ppp pppp \ set note pitch
    0vvv vvvv \ set velocity
    
    0b0 0 7 64 \ set volume
    0b0 20 1 \ select sound bank
    0c0 2 \ select sound in sound bank
    
    0e0 \ pitch bend
    
    0f0 \ reset notes
    0f7 \ end
    ;
    
    \\\\\\\\\\
    rewrite to bitbang it out on port 3

    // set up port 3
    out 3, 0
    
    // set up the MIDI channel
    out 3, 1000 cccc
    
    // set note pitch
    out 3, 0ppp pppp
    
    // set velocity
    out 3, 0vvv vvvv
    
    // set volume
    out 3, 0b0 0 7 64
    
    // select sound bank
    out 3, 0b0 20 1
    
    // select sound in sound bank
    out 3, 0c0 2
    
    // pitch bend
    out 3, 0e0
    
    // reset notes
    out 3, 0f0
    
    // end
    out 3, 0f7
    \\\\\\\\\\\\
    
