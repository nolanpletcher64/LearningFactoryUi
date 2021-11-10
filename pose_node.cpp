#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "ros_vars.h"

double posx;
double posy;

void poseCallback(const geometry_msgs::Twist& msg) {
  posx = msg.linear.x;
  posy = msg.linear.y;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "ReadPose");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("/cmd_vel", 1000, poseCallback);
  ros::spin();
  return 0;
}