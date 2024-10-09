<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="./Partials/Head.jsp" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.3/css/buttons.dataTables.min.css">
</head>
<body class="bg-gray-120">
    <div class="flex h-screen">
        <jsp:include page="../../Components/Sidebar.jsp" />

        <main class="flex-1 p-8 overflow-y-auto">
            <div class="flex justify-between items-center mb-6">
                <h2 class="text-3xl font-semibold">Donor Management</h2>
                <div class="flex items-center">
                    <input type="text" placeholder="Search..." class="px-4 py-2 border rounded-l-lg focus:outline-none focus:ring-2 focus:ring-indigo-500" aria-label="Search donors">
                    <button class="bg-red-600 text-white px-4 py-2 rounded-r-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>

            <div class="bg-white p-6 rounded-lg shadow-md mb-8">
                <h3 class="text-xl font-semibold mb-4">Donor List</h3>
                <div class="overflow-x-auto">
                    <table id="donorTable" class="display w-full">
                        <thead>
                            <tr class="bg-gray-100">
                                <th class="text-left py-3 px-4 font-semibold text-sm">Donor Name</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Email</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Total Donations</th>
                                <th class="text-left py-3 px-4 font-semibold text-sm">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="donor" items="${donorList}">
                                <tr class="border-b">
                                    <td class="py-3 px-4">${donor.name} ${donor.surname}</td>
                                    <td class="py-3 px-4">${donor.email}</td>
                                    <td class="py-3 px-4">R${donor.amount}</td>
                                    <td class="py-3 px-4">
                                        <button class="bg-indigo-600 text-white px-4 py-2 rounded hover:bg-indigo-700 focus:outline-none">View</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- AI Assistant (if needed) -->
        </main>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#donorTable').DataTable({
                dom: 'Bfrtip',
                buttons: [
                    {
                        extend: 'copy',
                        className: 'btn btn-primary',
                        text: 'Copy',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'excel',
                        className: 'btn btn-success',
                        text: 'Export to Excel',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'csv',
                        className: 'btn btn-info',
                        text: 'Export to CSV',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    {
                        extend: 'pdf',
                        className: 'btn btn-danger',
                        text: 'Export to PDF',
                        exportOptions: {
                            columns: ':visible'
                        }
                    },
                    'print'
                ],
                responsive: true
            });
        });
    </script>
</body>
</html>
