//Randomize seed
randomize();

//Create dot
if(dotindex < numberofDots){
	//Set random position of dot
	randomx	= random(RectSize);
	randomy = random(RectSize);

	array_push(dotsOnMap, {
		xposDot : randomx,
		yposDot : randomy
	});

	//Check if dot is inside circle
	if(point_distance(randomx, randomy, RectSize/2, RectSize/2) <= circleradius) numberDotsinCircle++;

	//Estimate pi
	estimatedPI = (4 * numberDotsinCircle) / dotindex;

	dotindex++;
}

