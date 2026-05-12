# ObjectAlign.msg
# ZED + Aruco 기반으로 구매 대상 물체를 인식한 뒤,
# 로봇팔 정렬과 SAM3 prompt에 필요한 정보를 전달하는 메시지
#
# 모든 좌표는 base_link 기준으로 publish한다.
# 이 메시지는 최종 선택된 Aruco 결과 1개가 있을 때만 publish한다.

std_msgs/Header header

# Aruco marker ID
int32 aruco_id

# 구매해야 하는 물체 class
# 예: "apple", "banana", "bottle"
string label

# SAM3에 넘길 text prompt
string text_prompt

# 사용할 로봇 팔 "left", "right"
string selected_arm

# 선반 종류
# 예: "shelf_a", "shelf_b"
# 로봇팔 노드는 이 값을 보고 어떤 collision model을 띄울지 결정한다.
string shelf_type

# Aruco marker 중심 위치
# base_link 기준
geometry_msgs/Point marker_position

# 로봇 팔이 D405로 물체/마커 주변을 바라보도록 이동할 최종 align 목표 pose
# base_link 기준
geometry_msgs/Pose align_pose