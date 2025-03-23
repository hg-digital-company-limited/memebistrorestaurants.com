<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Hóa đơn {{ $invoice->invoice_code }}</title>
    <style>
        body { font-family: DejaVu Sans, sans-serif; }
        .invoice-box {
            max-width: 800px;
            margin: auto;
            padding: 30px;
            border: 1px solid #eee;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
        }
        table {
            width: 100%;
            line-height: 1.6;
            text-align: left;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <div class="invoice-box">
        <h2>Hóa đơn: {{ $invoice->invoice_code }}</h2>
        <p>Nhà hàng: {{ $invoice->restaurant->name }}</p>
        <p>Ngày tạo: {{ $invoice->created_at->format('d/m/Y H:i') }}</p>
        <table>
            <tr>
                <th>Món ăn</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
                <th>Thành tiền</th>
            </tr>
            @foreach ($invoice->invoiceItems as $item)
                <tr>
                    <td>{{ $item->dish->name }}</td>
                    <td>{{ $item->quantity }}</td>
                    <td>{{ number_format($item->unit_price, 0, ',', '.') }} VNĐ</td>
                    <td>{{ number_format($item->total_price, 0, ',', '.') }} VNĐ</td>
                </tr>
            @endforeach
        </table>
        <h3>Tổng cộng: {{ number_format($invoice->total_amount, 0, ',', '.') }} VNĐ</h3>
    </div>
</body>
</html>
