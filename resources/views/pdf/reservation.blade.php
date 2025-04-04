<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Details</title>
    <style>

        body {
            font-family: DejaVu Sans;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        p {
            font-size: 16px;
            line-height: 1.5;
            margin: 10px 0;
        }
        .label {
            font-weight: bold;
            color: #555;
        }
        .footer {
            margin-top: 20px;
            text-align: center;
            font-size: 12px;
            color: #777;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thông Tin Đặt Chỗ</h1>
        <p><span class="label">Tên:</span> {{ $reservation->name }}</p>
        <p><span class="label">Điện Thoại:</span> {{ $reservation->phone }}</p>
        <p><span class="label">Ngày Đặt:</span> {{ $reservation->reservation_day }}</p>
        <p><span class="label">Số Người:</span> {{ $reservation->number_of_people }}</p>
        <p><span class="label">Thời Gian Đặt:</span> {{ $reservation->reservation_time }}</p>
        <p><span class="label">Nhà Hàng:</span> {{ $reservation->restaurant->name }}</p>
        <p><span class="label">Ghi Chú:</span> {{ $reservation->notes }}</p>
        <p><span class="label">Mã Đặt Chỗ:</span> {{ $reservation->reservation_code }}</p>
        <div class="footer">
            Cảm ơn bạn đã chọn chúng tôi!
        </div>
    </div>
</body>
</html>