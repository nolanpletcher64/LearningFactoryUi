#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

void poseCallback(const geometry_msgs::Twist& msg) {
  int posx = msg.linear.x;
  int posy = msg.linear.y;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "ReadPose");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("/cmd_vel", 1000, poseCallback);
  ros::spin();
  return 0;
}