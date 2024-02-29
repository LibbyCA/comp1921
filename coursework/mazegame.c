#include <stdio.h>
#include <stdlib.h>

typedef struct{
    int x; //help to traverse maze array
    int y; //help to traverse maze array
    int start; //S on maze
    int player; //current user position
    char input; //WASD and M options entered by user
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
int main(int argc, char *argv[]){ //declare arguments
    
    // validation check to ensure no more or less than two arguments are declared by user - argc != 2
    // return 1 (error message) if so
    // argv[1] is the maze file name entered by user

    //use load_maze function above to load argv[1] 

    //use a while(1) loop so the loop repeats forever until a break statement is found
    // use a switch loop to complete the WASD and M options
    // print the options the user has
    // scanf for a char 
    // case 'W' check if the coordinate above is '#' (wall) - print message telling the player they cannot move in this direction
    // otherwise 
    // case 'A' check is coordinate to the left is '#' (wall) - print message telling the player they cannot move in this direction
    // otherwise
    //case 'S' check is coordinate below is '#' (wall) - print message telling the player they cannot move in this direction
    // otherwise
    // case 'D' check is coordinate to the right is '#' (wall) - print message telling the player they cannot move in this direction
    // otherwise
    // case 'M' call on the map_maze function above
    // default - error message - shouldn't appear as test script should ensure no other characters are entered

    // outside of the switch loop but still in the while loop - check if the player current position is E for the end
    // if print a congratulatory message and break out of the loop

    

    //switch loop
    // w - check if wall above else increment y position
    

}
