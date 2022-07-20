<table>
    <thead>
        <tr>
            <th>Application Number</th>
            <th>Applicant Name</th>
            <th>Application Date</th>
            <th>Gross Amount</th>
            <th>Total Received Amount</th>
            <th>Payment Schedule</th>
        </tr>
    </thead>
    <tbody>
        @foreach($payments as $result)
        <tr>
            <td class="text-center">{{ $result->application_number }}</td>
            <td>{{ $result->applicant_name }}</td>
            <td>{{ $result->date_of_application }}</td>
            <td>{{"Rs. "}}{{ $result->gross_amount }}</td>
            <td class="text-center">
                <?php
                $details = App\Payment::where('customer_id', '=', $result->customer_id)->where('status', 'Active')->get();
                $sum = 0;
                foreach ($details as $detail) {
                    if ($detail->onbook_received10per != 0) {
                        $sum += $detail->onbook_received10per;
                    } else if ($detail->payments_received10per != 0) {
                        $sum += $detail->payments_received10per;
                    } else if ($detail->first_received10per != 0) {
                        $sum += $detail->first_received10per;
                    } else if ($detail->second_received10per != 0) {
                        $sum += $detail->second_received10per;
                    } else if ($detail->third_received10per != 0) {
                        $sum += $detail->third_received10per;
                    } else if ($detail->fourth_received10per != 0) {
                        $sum += $detail->fourth_received10per;
                    } else if ($detail->fifth_received10per != 0) {
                        $sum += $detail->fifth_received10per;
                    } else if ($detail->handover_received10per != 0) {
                        $sum += $detail->handover_received10per;
                    } else if ($detail->onbook_received15per != 0) {
                        $sum += $detail->onbook_received15per;
                    } else if ($detail->payments_received15per != 0) {
                        $sum += $detail->payments_received15per;
                    } else if ($detail->first_received15per != 0) {
                        $sum += $detail->first_received15per;
                    } else if ($detail->second_received15per != 0) {
                        $sum += $detail->second_received15per;
                    } else if ($detail->third_received15per != 0) {
                        $sum += $detail->third_received15per;
                    } else if ($detail->fourth_received15per != 0) {
                        $sum += $detail->fourth_received15per;
                    } else if ($detail->fifth_received15per != 0) {
                        $sum += $detail->fifth_received15per;
                    } else if ($detail->handover_received15per != 0) {
                        $sum += $detail->handover_received15per;
                    } else if ($detail->onbook_received20per != 0) {
                        $sum += $detail->onbook_received20per;
                    } else if ($detail->payments_received20per != 0) {
                        $sum += $detail->payments_received20per;
                    } else if ($detail->first_received20per != 0) {
                        $sum += $detail->first_received20per;
                    } else if ($detail->second_received20per != 0) {
                        $sum += $detail->second_received20per;
                    } else if ($detail->third_received20per != 0) {
                        $sum += $detail->third_received20per;
                    } else if ($detail->fourth_received20per != 0) {
                        $sum += $detail->fourth_received20per;
                    } else if ($detail->fifth_received20per != 0) {
                        $sum += $detail->fifth_received20per;
                    } else if ($detail->handover_received20per != 0) {
                        $sum += $detail->handover_received20per;
                    }
                }
                echo "Rs." . $sum;
                ?>
            </td>
            <td class="text-center">{{ $result->payment_schedule }}{{" %"}}</td>
        </tr>
        @endforeach
    </tbody>
</table>