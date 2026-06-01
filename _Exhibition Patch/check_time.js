autowatch =1;
inlets = 1;
outlets = 1;

var cues = [
    { ms: 0,    index: 2   },
    { ms: 333,  index: 3   },
    { ms: 525,  index: 1   },
    { ms: 791,  index: 11  },
    { ms: 1027, index: 13  },
    { ms: 1260, index: 12  },
    { ms: 1361, index: 14  },
    { ms: 1615, index: 4   },
    { ms: 1732, index: 10  },
    { ms: 2153, index: 15  },
    { ms: 2255, index: 8   },
    { ms: 2526, index: 9   },
    { ms: 2918, index: 6   },
    { ms: 2997, index: 12  },
    { ms: 3333, index: 5   },
    { ms: 3610, index: 7   },
    { ms: 3735, index: 16 }
];

var lastCue = -1;

function msg_int(val) { checkCue(val); }
function msg_float(val) { checkCue(val); }

function checkCue(currentMs) {
    var currentCue = -1;
    for (var i = 0; i < cues.length; i++) {
        if (currentMs >= cues[i].ms) {
            currentCue = i;
        }
    }
    if (currentCue !== lastCue) {
        lastCue = currentCue;
        if (currentCue >= 0) {
            outlet(0, cues[currentCue].index);
        }
    }
}

function reset() {
    lastCue = -1;
}