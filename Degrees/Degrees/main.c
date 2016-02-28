//
//  main.c
//  Degrees
//
//  Created by Apple on 16/1/17.
//  Copyright © 2016年 Apple. All rights reserved.
//

#include <stdio.h>

float fahrenheitFromCelsius(float cel)
{
    float fahr = cel * 1.8 +32.0;
    printf("%f Celsius is %f Fahrenheit\n",cel,fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n",freezeInF);
    return 0;
}
