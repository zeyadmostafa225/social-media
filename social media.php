<?php
// اتصال بقاعدة البيانات
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "social_media"; // تغيير اسم قاعدة البيانات إلى اسم القاعدة الصحيح

$conn = new mysqli($servername, $username, $password, $dbname);
// التحقق من الاتصال
if ($conn->connect_error) {
    die("فشل الاتصال بقاعدة البيانات: " . $conn->connect_error);
}
// استرجاع بيانات المدخلة من النموذج
$Email = $_POST['Email'];
$user_password = $_POST['password']; // تغيير اسم المتغير لتجنب التعارض مع اسم الحقل

// استعلام للتحقق من صحة بيانات المستخدم وتجنب هجمات حقن SQL
$sql = "SELECT * FROM user WHERE E-mail = ? AND password = ?";
$con = $conn->prepare($sql);
$con->bind_param( $email, $user_password);
$con->execute();
// هذا الأمر يستخدم للحصول على نتيجة الاستعلام بعد تنفيذه
$log = $con->get_result();

if ($log->num_rows > 0) {
    // تم العثور على مستخدم متطابق
    // توجيه المستخدم إلى صفحة الترحيب
    header("Location: question.html");
    exit;
} else {
    // لم يتم العثور على مستخدم متطابق
    echo "خطأ في تسجيل الدخول، يرجى التحقق من بيانات الدخول الخاصة بك.";
}
$con->close();
$conn->close();
?>