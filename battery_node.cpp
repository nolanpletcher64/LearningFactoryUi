#include "ros/ros.h"
#include "mir_msgs/RobotStatus.h"

void batteryCallback(const mir_msgs::RobotStatus& msg) {
  int bp = msg.battery_percentage;
  int b_rem = msg.battery_time_remaining;
}

int main(int argc, char **argv) {
  ros::init(argc, argv, "ReadBattery");
  ros::NodeHandle n;
  //in case this does not work, check mir_driver/nodes/mir_bridge.py
  //uncomment out line 295 (as of 11/9/21): TopicConfig('robot_status', mir_msgs.msg.RobotStatus),
  ros::Subscriber sub = n.subscribe("/robot_status", 1000, batteryCallback);
  ros::spin();
  return 0;
}