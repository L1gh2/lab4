<%@ page import="Servlet.Auto" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Чтение</title>


    <style>
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        table {
            background-color: #d4edda;
            color: #155724;
        }

        thead {
            background-color: #c3e6cb;
            color: #155724;
        }

        th {
            background-color: #155724;
            color: #fff;
        }

        tbody tr:nth-child(even) {
            background-color: #c3e6cb;
        }

        tbody tr:nth-child(odd) {
            background-color: #d4edda;
        }

        td button.btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }

        td button.btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: limegreen;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 16px;
            font-family: 'Montserrat';
        }

        .btn:hover {
            background-color: green;
        }

        .btn-edit {
            background-color: green;
        }

        .btn-delete {
            background-color: red;
        }
    </style>
</head>

<body>
<script src="/js/reader.js"></script>
<div class="container">
    <table id="main_table" class="table table-info w-50 shadow rounded text-center position-absolute top-50 start-50 translate-middle">
        <thead class="bg-success">
        <tr>
            <th scope="col">Название</th>
            <th scope="col">Тип кузова</th>
            <th scope="col">Трансмиссия</th>
            <th scope="col">Год выпуска</th>
            <th scope="col">Пробег</th>
            <th scope="col">ID</th>
            <th scope="col">Удаление</th>
            <th scope="col">Редактирование</th>
        </tr>
        </thead>
        <tbody id="table_body">
        </tbody>
    </table>
</div>

<!-- Подключение Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/reader.js"></script>
</body>
</html>