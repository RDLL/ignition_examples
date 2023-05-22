def doGet(request, session):
	try:
		session_id = request['params']['session']
		page_id = request['params']['page']
	except:
		return {'json': {'sucess': False, 'msg': 'ERROR: URL parameters don\'t match definition'}}
	
	data = system.db.runNamedQuery('DatabasesExamples/getCountriesByContinent')
	pyData = system.dataset.toPyDataSet(data)
	
	continents = map(lambda row: str(row[0]),pyData)
	numCountries = map(lambda row: str(row[1]),pyData)
	
	html = """
		<html>
		<body>
			<div>
			  <canvas id="myChart"></canvas>
			</div>
			
			<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
			
			<script>
			  const ctx = document.getElementById('myChart');
			
			  new Chart(ctx, {
			    type: 'bar',
			    data: {
			      labels: """ + str(continents) +""",
			      datasets: [{
			        label: '# of Countries',
			        data: """+ str(numCountries) +""",
			        borderWidth: 1,
			        backgroundColor: [
			         '#ff6384',
			         '#36a2eb',
			         '#cc65fe',
			         '#ffce56',
			         '#9BD0F5'
			         ]
			      }]
			    },
			    options: {
			      scales: {
			        y: {
			          beginAtZero: true
			        }
			      }
			    }
			  });
			</script>
		</body>
		</html>
	"""
	
	return {'html': html} 
	