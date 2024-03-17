#include <stdio.h>
#include <stdlib.h>

#define MAX_SIZE 100

typedef struct {
    int x, y;
} Position;

char maze[MAX_SIZE][MAX_SIZE];
Position start, current;

void load_maze(const char *filename) {
    FILE *file = fopen(filename, "r");
    if (file == NULL) {
        printf("Cannot open file.\n");
        exit(1);
    }

    int i = 0;
    while (fgets(maze[i], MAX_SIZE, file) != NULL) {
        for (int j = 0; maze[i][j] != '\0'; j++) {
            if (maze[i][j] == 'S') {
                start.x = i;
                start.y = j;
                current = start;
            }
        }
        i++;
    }

    fclose(file);
}

void print_maze() {
    for (int i = 0; i < MAX_SIZE && maze[i][0] != '\0'; i++) {
        for (int j = 0; maze[i][j] != '\0'; j++) {
            if (i == current.x && j == current.y)
                printf("X");
            else
                printf("%c", maze[i][j]);
        }
        printf("\n");
    }
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <maze_file>\n", argv[0]);
        return 1;
    }

    load_maze(argv[1]);

    char move;
    while (1) {
        printf("Enter move (W/A/S/D) or 'M' to view map: ");
        scanf(" %c", &move);

        switch (move) {
            case 'W':
            case 'w':
                if (current.x > 0 && maze[current.x - 1][current.y] != '#')
                    current.x--;
                else
                    printf("Cannot move up. There's a wall.\n");
                break;
            case 'A':
            case 'a':
                if (current.y > 0 && maze[current.x][current.y - 1] != '#')
                    current.y--;
                else
                    printf("Cannot move left. There's a wall.\n");
                break;
            case 'S':
            case 's':
                if (maze[current.x + 1][current.y] != '#' && maze[current.x + 1][current.y] != '\0')
                    current.x++;
                else
                    printf("Cannot move down. There's a wall.\n");
                break;
            case 'D':
            case 'd':
                if (maze[current.x][current.y + 1] != '#' && maze[current.x][current.y + 1] != '\0')
                    current.y++;
                else
                    printf("Cannot move right. There's a wall.\n");
                break;
            case 'M':
            case 'm':
                print_maze();
                break;
            default:
                printf("Invalid move.\n");
        }

        if (maze[current.x][current.y] == 'E') {
            printf("Congratulations! You have reached the exit.\n");
            break;
        }
    }

    return 0;
}

