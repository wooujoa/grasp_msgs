# ObjectGrasp.msg
# 추론 노드가 최종 선택한 물체 1개의 인식/파지 결과

# stamp: 이 결과가 계산된 시간
# frame_id: 아래 좌표들이 표현된 기준 좌표계
# 예: base_link, map, zedm_left_camera_optical_frame
std_msgs/Header header

# 물체 이름 또는 클래스
string label

# 추론 신뢰도
float32 confidence

# 물체의 중심과 방향
# position: 물체 중심
# orientation: 물체 자세
geometry_msgs/Pose object_pose

# 물체 크기
# x: width
# y: depth
# z: height
geometry_msgs/Vector3 object_size

# 파지 기준점
# 예: 물체 표면의 contact point 또는 grasp target point
geometry_msgs/Point grasp_point

# gripper가 실제로 이동해야 하는 목표 pose
geometry_msgs/Pose grasp_pose

# gripper 벌림 폭
float32 grasp_width