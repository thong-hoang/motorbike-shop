<div class="col-sm-auto">
    <div class="d-flex justify-content-center justify-content-sm-end">
        <div th:if="${totalPages > 1}">
            <nav>
                <ul class="pagination justify-content-center flex-wrap">
                    <li th:class="${currentPage > 1 ? 'page-item' : 'page-item disabled'}">
                        <a th:replace="fragments :: page_link(1, 'First')"></a>
                    </li>
                    <li th:class="${currentPage > 1 ? 'page-item' : 'page-item disabled'}">
                        <a th:replace="fragments :: page_link(${currentPage - 1}, 'Previous')"></a>
                    </li>
                    <li th:class="${currentPage != i ? 'page-item' : 'page-item active'}"
                        th:each="i : ${numbers.sequence(1,totalPages)}">
                        <a th:replace="fragments :: page_link(${i}, ${i})"></a>
                    </li>
                    <li th:class="${currentPage < totalPages ? 'page-item' : 'page-item disabled'}">
                        <a th:replace="fragments :: page_link(${currentPage + 1}, 'Next')"></a>
                    </li>
                    <li th:class="${currentPage < totalPages ? 'page-item' : 'page-item disabled'}">
                        <a th:replace="fragments :: page_link(${totalPages}, 'Last')"></a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</div>