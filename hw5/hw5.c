#include <stdio.h>
#include <string.h>

typedef struct {
    char owner[50];
} Car;

void startEngine(Car *c) {
    (void)c;  
    printf("Engine started!\n");
}

void accelerate(Car *c) {
    (void)c;
    printf("Car: Pressing gas pedal...\n");
}

void brake(Car *c) {
    (void)c;
    printf("Car: Applying brakes...\n");
}

int main(void) {
    Car janesCar;
    Car jacksCar;

    strcpy(janesCar.owner, "Jane's car");
    strcpy(jacksCar.owner, "Jack's car");

    Car *myCar = &janesCar;
    startEngine(myCar);
    accelerate(myCar);
    brake(myCar);


    return 0;
}
