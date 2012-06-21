$(document).ready(function () {
    // Creating hoverscroll with fixed arrows
    $('#my-list').hoverscroll({
        fixedArrows: true,
        rtl: true
    });
    // Starting the movement automatically at loading
    // @param direction: right/bottom = 1, left/top = -1
    // @param speed: Speed of the animation (scrollPosition += direction * speed)
    var direction = -1,
            speed = 3;
    $("#my-list")[0].startMoving(direction, speed);
});

function alignHeight() {

    var centerContainer = document.getElementById("centerContainer");
    var leftContainer = document.getElementById("leftContainer");

    var estateContainer = document.getElementById("estateContainer");
    var rentContainer = document.getElementById("rentContainer");
    
    
    var estateHeight = estateContainer.offsetHeight;
    var rentHeight = rentContainer.offsetHeight;

    if (rentHeight > estateHeight) {
        rentContainer.style.borderLeft = "1px dashed pink";
        document.getElementById("contentPlacer").style.height = rentHeight + "px";
    }
    else {
        estateContainer.style.borderRight = "1px dashed pink";
        document.getElementById("contentPlacer").style.height = estateHeight + "px";
    }

    var heightCenterCntr = document.getElementById("centerContainer").offsetHeight;
    var heightLeftCntr = document.getElementById("leftContainer").offsetHeight;

    if (heightLeftCntr < heightCenterCntr) {
        leftContainer.style.height = heightCenterCntr + "px";
    }
    else {
        rightContainer.style.height = heightLeftCntr + "px";
    }
}

