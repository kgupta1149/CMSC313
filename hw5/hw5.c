#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ----------------------------------------
   "Vehicle" interface simulated using 
   function pointers.
   ---------------------------------------- */

typedef struct Vehicle {
    char name[50];

    void (*startEngine)(struct Vehicle*);
    void (*accelerate)(struct Vehicle*);
    void (*brake)(struct Vehicle*);
} Vehicle;

/* ----------------------------------------
   Functions for a Car
   ---------------------------------------- */

void car_startEngine(Vehicle* v) {
    printf("%s: Engine started!\n", v->name);
}

void car_accelerate(Vehicle* v) {
    printf("%s: Car: Pressing gas pedal...\n", v->name);
}

void car_brake(Vehicle* v) {
    printf("%s: Car: Applying brakes...\n", v->name);
}

/* Constructor-like function */
Vehicle* createCar(const char* name) {
    Vehicle* v = malloc(sizeof(Vehicle));

    strcpy(v->name, name);

    v->startEngine = car_startEngine;
    v->accelerate  = car_accelerate;
    v->brake       = car_brake;

    return v;
}

/* ----------------------------------------
   main()
   ---------------------------------------- */

int main() {

    /* Create "Car" objects */
    Vehicle* janesCar = createCar("Jane's car");
    Vehicle* jacksCar = createCar("Jack's car");

    /* Behaves like the original C++ code */
    janesCar->startEngine(janesCar);
    janesCar->accelerate(janesCar);
    janesCar->brake(janesCar);

    printf("\n");  // separator

    jacksCar->startEngine(jacksCar);
    jacksCar->accelerate(jacksCar);
    jacksCar->brake(jacksCar);

    /* Free memory */
    free(janesCar);
    free(jacksCar);

    return 0;
}
