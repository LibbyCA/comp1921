#include <stdio.h>
#include <stdlib.h>

typedef struct{
    int x; //help to traverse maze array
    int y; //help to traverse maze array
    int start; //S on maze
    int player; //current user position
}

int maxSize = 100; //greatest number of rows/columns maze can have
char maze [maxSize][maxSize]; //intialise 2d array

void load_maze (){
    //open filename
    //validation whether file correctly opened
    //return 1 if not opened (error message) 

    int i = 0;
    int j = 0;
    //read file into an array using fgets () until it reaches the end of file or until the maxSize
    //for loop to find starting point of maze (S)
    //test script has already checked whether maze is too big/small and that the size of each row/column are the same as the others
    //maze is treated as an array (maze[i][j])
    //once S character found assigns i as start.x and j as start.y
    //player is equal to start position


    //close file
}

void map_maze (){

    int i = 0;
    int j = 0;
    // for loop incrementing i until at end of maze
    // for loop incrementing j until at end of maze
    // check if i and j are equal to player.x and player.y
    // if so shows player's current position so prints an "X"
    // else prints maze[i][j]
    // this should print an image of the map of the maze with the players current position
    
}
int main(){

    // load maze
    // find height and width of maze using a for loop

    //go through maze file and print each element individually

    //switch loop
    // w - check if wall above else increment y position
    

}
