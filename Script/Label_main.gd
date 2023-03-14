extends Label
onready var timer = $Timer

var Scene_count=0
var part1_1= ["Hi Hiii～Kawaii Streamerเองค่า วันนี้เหมือนคนดูจะเยอะขึ้นกว่าเดิมหรือเปล่าเนี่ย สวัสดีคุณเต้าหู้ปลา คุณหมึกผัดไข่เค็ม คุณมะง่วงด้วยน้า มาใหม่ใช่ม้า? ฝากตัวด้วยน้า","หืม ไม่ต้องเรียกชื่อช่องเต็มยศขนาดนั้นก็ได้",
"เรียกว่า คาสุจังเถอะ！","โดเนทสักหน่อยดีหรือเปล่านะ...?","[หน้าจอขึ้นข้อความ คุณเต้าหู้ปลา ได้ส่งโดเนทจำนวน xxx]","ว้าย ตกใจหมดเลย ยังไงก็ยังไม่ชินกับเสียงแจ้งเตือนโดเนทอยู่ดีอ่า","ไหนๆ คุณเต้าหู้ปลา ขอบคุณสำหรับโดเนทจำนวน xxxนะ ขอให้..เอ๋? เรื่องแบบนั้นไม่ได้หรอกนะ","สำหรับคนที่มาใหม่ลองอ่านข้อควรปฏิบัติด้านล่างก่อนก็ได้นะ ค่อยๆคอมเมนต์กันอย่างสุภาพด้วย!",""]
func _ready() -> void:
	$Tween.interpolate_property(
		self,"percent_visible",
		0.0,1.0,2.0,Tween.TRANS_CUBIC,Tween.EASE_IN_OUT
	)
	$Tween.start()

func Text(text_box):
	text=text_box
	$Tween.interpolate_property(
		self,"percent_visible",
		0.0,1.0,3.0,Tween.TRANS_CUBIC,Tween.EASE_IN_OUT
	)
	$Tween.start()
	
func _on_Area2D_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and timer.is_stopped()):
		Scene_count+=1
		
		Text(part1_1[Scene_count-1])
		timer.start(0.5)
