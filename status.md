# Status Table

Translate database status to categorical status:
```
started:      Draft,
submitted:    Processing,
ack:          Awaiting Acknowledgement,
processed:    Awaiting Response,
appealing:    Awaiting Appeal,
fix:          Fix Required,
payment:      Payment Required,
rejected:     Rejected,
no_docs:      No Responsive Documents,
done:         Completed,
partial:      Partially Completed,
abandoned:    Withdrawn
```

Details on what status mean:
<table>
		<tbody><tr>
			<th width="10%">Acronym</th>
			<th width="20%">Name</th>
			<th width="20%">Status</th>
			<th width="50%">Description</th>
		</tr>
		
		<tr>
			<td>ACK</td>
			<td>Acknowledgement Letter</td>
			
			<td>Awaiting Response</td>
			
			<td>An acknowledgement letter, stating the request is being processed.</td>
		</tr>
		
		<tr>
			<td>APP-A</td>
			<td>Appeal Succesful</td>
			
			<td>Awaiting Response</td>
			
			<td>A letter stating that the request appeal has been succesful.</td>
		</tr>
		
		<tr>
			<td>APP-ACK</td>
			<td>Appeal Acknowledgement</td>
			
			<td>Awaiting Appeal</td>
			
			<td>A letter stating that the request appeal has been received and is being processed.</td>
		</tr>
		
		<tr>
			<td>APP-R</td>
			<td>Appeal Rejected</td>
			
			<td>Rejected</td>
			
			<td>A letter stating that the request appeal has been rejected.</td>
		</tr>
		
		<tr>
			<td>APP-W</td>
			<td>Appeal Withdrawn</td>
			
			<td>Withdrawn</td>
			
			<td>An acknowledgment that the requester has withdrawn an appeal.</td>
		</tr>
		
		<tr>
			<td>FEE</td>
			<td>Payment Required</td>
			
			<td>Payment Required</td>
			
			<td>A letter stating the requester must agree to or prepay assessed or estimated fees in order for the agency to continue processing the request.</td>
		</tr>
		
		<tr>
			<td>FEE-A</td>
			<td>Fee Waiver Accepted</td>
			
			<td>Awaiting Response</td>
			
			<td>A letter stating the request for reduced or waived fees has been accepted.</td>
		</tr>
		
		<tr>
			<td>FEE-R</td>
			<td>Fee Waiver Rejected</td>
			
			<td>Status Unchanged</td>
			
			<td>A letter stating the request for reduced or waived fees has been rejected.</td>
		</tr>
		
		<tr>
			<td>FIX</td>
			<td>Fix Required</td>
			
			<td>Fix Required</td>
			
			<td>A fix is required to perfect the request.</td>
		</tr>
		
		<tr>
			<td>FIX-D</td>
			<td>Fix Required</td>
			
			<td>Fix Required</td>
			
			<td>A fix is required to perfect the request. The agency has asked the requester to specify a date range for the requested materials.</td>
		</tr>
		
		<tr>
			<td>FIX-F</td>
			<td>Fee Agreement Required</td>
			
			<td>Fix Required</td>
			
			<td>The user must agree to pay fees in order for the process to be continued being processed.  No payment is due at this time.</td>
		</tr>
		
		<tr>
			<td>FIX-I</td>
			<td>Fix Required</td>
			
			<td>Fix Required</td>
			
			<td>A letter stating that a certificate of identity, proof of death, or other privacy-related fix is required in order to continue processing the request.</td>
		</tr>
		
		<tr>
			<td>FIX-V</td>
			<td>Fix Required</td>
			
			<td>Fix Required</td>
			
			<td>A fix is required to perfect the request. The request has been rejected as being too vague, burdensome or otherwise unprocessable.</td>
		</tr>
		
		<tr>
			<td>FWD</td>
			<td>Request Forwarded</td>
			
			<td>Status Unchanged</td>
			
			<td>The request has been forwarded from one agency to another agency or department for further review or follow up.</td>
		</tr>
		
		<tr>
			<td>INT</td>
			<td>Interim Response</td>
			
			<td>Awaiting Response</td>
			
			<td>An interim response, stating the request is being processed.</td>
		</tr>
		
		<tr>
			<td>INT-D</td>
			<td>Interim Response</td>
			
			<td>Awaiting Response</td>
			
			<td>An interim response, stating the request has been delayed</td>
		</tr>
		
		<tr>
			<td>NRD</td>
			<td>No Responsive Documents</td>
			
			<td>No Responsive Documents</td>
			
			<td>A no responsive documents response.</td>
		</tr>
		
		<tr>
			<td>NRD-T</td>
			<td>No Responsive Documents</td>
			
			<td>No Responsive Documents</td>
			
			<td>Potentially responsive documents were transferred to another department.</td>
		</tr>
		
		<tr>
			<td>REJ</td>
			<td>Request rejected</td>
			
			<td>Rejected</td>
			
			<td>The request has been rejected by the agency.</td>
		</tr>
		
		<tr>
			<td>REJ-E</td>
			<td>Materials exempt from disclosure</td>
			
			<td>Rejected</td>
			
			<td>The request has been rejected, with the agency stating that the information or document(s) requested are exempt from disclosure.</td>
		</tr>
		
		<tr>
			<td>REJ-G</td>
			<td>Glomar Response</td>
			
			<td>Rejected</td>
			
			<td>The request has been rejected, with the agency stating that it can neither confirm nor deny the existence of the requested documents.</td>
		</tr>
		
		<tr>
			<td>REJ-P</td>
			<td>Rejected, proxy required</td>
			
			<td>Rejected</td>
			
			<td>The request has been rejected with the agency stating that you must be a resident of the state. MuckRock is working with our in-state volunteers to refile this request, and it should appear in your account within a few days.</td>
		</tr>
		
		<tr>
			<td>REJ-V</td>
			<td>Request Rejected</td>
			
			<td>Rejected</td>
			
			<td>The request has been rejected as being too vague, burdensome or otherwise unprocessable.</td>
		</tr>
		
		<tr>
			<td>RES</td>
			<td>Responsive Documents</td>
			
			<td>Completed</td>
			
			<td>A copy of documents responsive to the request.</td>
		</tr>
		
		<tr>
			<td>RES-C</td>
			<td>Cover Letter</td>
			
			<td>Completed</td>
			
			<td>A cover letter granting the request and outlining any exempted materials, if any.</td>
		</tr>
		
		<tr>
			<td>RES-P</td>
			<td>Partial Responsive Documents</td>
			
			<td>Partially Completed</td>
			
			<td>A first set of responsive documents from the agency, with more to be sent at a specified date.</td>
		</tr>
		
	</tbody></table>
