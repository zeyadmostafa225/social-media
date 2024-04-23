// اتصال بقاعدة البيانات
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "social media";

// التحقق من الاتصال
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("فشل الاتصال بقاعدة البيانات: " . $conn->connect_error);
}
 // استرجاع بيانات المدخلة من النموذج
 $email = $_POST['email'];

 // التحقق مما إذا كان البريد الإلكتروني موجودًا في قاعدة البيانات
 $sql_check_email = "SELECT * FROM answers WHERE E-mail = ?";
 $check_email = $conn->prepare($sql_check_email);
 $check_email->bind_param("s", $email);
 $check_email->execute();
 $result_check_email = $check_email->get_result();
     if ($result_check_email->num_rows > 0) {
    // البريد الإلكتروني موجود، يمكن قبول الإجابات
    // استلام بيانات الاستبيان من النموذج
    $question1 = $_POST['question1'];
    $question2 = $_POST['question2'];
    $question3 = $_POST['question3'];
    $question4 = $_POST['question4'];
    $question5 = $_POST['question5'];
    $question6 = $_POST['question6'];
    $question7 = $_POST['question7'];
    $question8 = $_POST['question8'];
    $question9 = $_POST['question9'];
    $question10 = $_POST['question10'];

    // إدراج الإجابات في جدول الاستبيان مع البريد الإلكتروني
    $sql = "UPDATE answers SET Q1 = ?, Q2 = ?, Q3 = ?, Q4 = ?, Q5 = ?, Q6 = ?, Q7 = ?, Q8 = ?, Q9 = ?, Q10 = ? WHERE E-mail = ?";
    $in = $conn->prepare($sql);
    $in->bind_param("sssssssssss", $question1, $question2, $question3, $question4, $question5, $question6, $question7, $question8, $question9, $question10, $email);
    $in->execute();
    $in->close();
    echo "تم حفظ الاستبيان بنجاح!";
} else {
    echo "خطأ: البريد الإلكتروني غير موجود في قاعدة البيانات!";
    // إيقاف تنفيذ الكود
    die();
}
//اغلاق اتصال قاعدة البيانات
$conn->close();
//اعادة توجيه المستخدم بعد الانتهاء من حل الاستبيان
header("Location: social media.php");
exit();
?>