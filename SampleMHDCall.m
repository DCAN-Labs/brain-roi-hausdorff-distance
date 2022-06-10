roi_1 = [0 0 0;
    1 1 1;
    2 2 2;
    3 2 1;
    4 1 0.25;
    5 1.25 1;
    6 3.25 3];
roi_2 = [rand rand rand;
    rand rand rand;
    rand rand rand;
    rand rand rand;
    rand rand rand;
    rand rand rand;
    rand rand rand;
    rand rand rand];
distance = ModHausdorffDist( roi_1, roi_2 );
distance
