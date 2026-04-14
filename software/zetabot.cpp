#include "zetabot.h"
#include <math.h>
#include <iostream>
#include <unistd.h>

void AlphaBot::start(long _samplingInterval)
{
    left_wheel_pwm.start(2, pwmfrequ);
    right_wheel_pwm.start(3, pwmfrequ);
}

void AlphaBot::stop()
{
    if ((leftWheelSpeed > 0) || (rightWheelSpeed > 0))
    {
        for (int i = 0; i < 10; i++)
        {
            setLeftWheelSpeed(leftWheelSpeed / 1.5);
            setRightWheelSpeed(rightWheelSpeed / 1.5);
            usleep(100000);
        }
        setLeftWheelSpeed(0);
        setRightWheelSpeed(0);
    }
}

void AlphaBot::setRightWheelSpeed(float speed)
{
    speed = -speed;
    if (speed < -1)
        speed = -1;
    if (speed > 1)
        speed = 1;
    rightWheelSpeed = speed;
    right_wheel_pwm.setDutyCycleNanosecs(speed2nanosec(speed));
}

void AlphaBot::setLeftWheelSpeed(float speed)
{
    if (speed < -1)
        speed = -1;
    if (speed > 1)
        speed = 1;
    leftWheelSpeed = speed;
    left_wheel_pwm.setDutyCycleNanosecs(speed2nanosec(speed));
}
