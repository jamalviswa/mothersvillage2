<table>
    <thead>
        <tr>
            <th>Application Number</th>
            <th>Applicant Name</th>
            <th>Rate per SQFT</th>
            <th>Salable Area</th>
            <th>UDS Area</th>
            <th>Guideline Value</th>
            <th>Land Cost</th>
            <th>Construction Cost</th>
            <th>Gross Amount</th>
            <th>Total Amount</th>
        </tr>
    </thead>
    <tbody>
        @foreach($costs as $cost)
        <tr>
            <td>{{ $cost->application_number }}</td>
            <td>{{ $cost->applicant_name }}</td>
            <td>{{ $cost->rate_sqft }}</td>
            <td>{{ $cost->sal_area }}</td>
            <td>{{ $cost->uds_area }}</td>
            <td>{{ $cost->guideline_value }}</td>
            <td>{{"Rs."}}{{ $cost->land_cost }}</td>
            <td>{{"Rs. "}}{{ $cost->construction_cost }}</td>
            <td>{{"Rs. "}}{{ $cost->gross_amount }}</td>
            <td>{{"Rs. "}}{{ $cost->total_amount }}</td>
        </tr>
        @endforeach
    </tbody>
</table>