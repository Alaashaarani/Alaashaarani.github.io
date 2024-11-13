<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Collect and sanitize form data
    $name = htmlspecialchars(strip_tags(trim($_POST['name'])));
    $email = filter_var(trim($_POST['email']), FILTER_SANITIZE_EMAIL);
    $message = htmlspecialchars(strip_tags(trim($_POST['message'])));

    // Email recipient and subject
    $to = "alaaelchaarani@gmail.com"; // Replace with your email
    $subject = "Contact Form Submission from $name";

    // Message content
    $body = "Name: $name\n";
    $body .= "Email: $email\n\n";
    $body .= "Message:\n$message";

    // Additional headers
    $headers = "From: $email";

    // Send the email
    if (mail($to, $subject, $body, $headers)) {
        echo "Thank you for reaching out! Your message has been sent.";
    } else {
        echo "Oops! Something went wrong, and we couldn't send your message.";
    }
} else {
    echo "Please submit the form first.";
}
?>
