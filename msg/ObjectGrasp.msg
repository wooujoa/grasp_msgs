# ObjectGrasp.msg
# SAM3 / AnyGrasp / CALI_D405 이후
# 최종 선택된 물체 1개의 인식 및 파지 성공 결과 메시지
#
# 모든 pose/point 좌표는 base_link 기준으로 publish한다.
# 이 메시지는 유효한 grasp 결과가 있을 때만 publish한다.

std_msgs/Header header

# 물체 이름 또는 클래스
string label

# 사용할 로봇 팔 "left", "right"
string selected_arm

# 물체의 중심과 방향
# position: 물체 중심
# orientation: 물체 자세
# base_link 기준
geometry_msgs/Pose object_pose

# 물체 크기 [m]
# x: width
# y: depth
# z: height
geometry_msgs/Vector3 object_size

# 파지점
# base_link 기준
geometry_msgs/Point grasp_point

# gripper가 실제로 이동해야 하는 최종 목표 pose
# base_link 기준
geometry_msgs/Pose grasp_pose