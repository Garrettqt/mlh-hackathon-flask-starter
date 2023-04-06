const options = {
	method: 'GET',
	headers: {
		'X-RapidAPI-Key': '7478f14f65msh230d78cb411f25cp1ff3cajsnacc103b463b8',
		'X-RapidAPI-Host': 'tasty.p.rapidapi.com'
	}
};

fetch('https://tasty.p.rapidapi.com/tips/list?id=3562&from=0&size=30', options)
	.then(response => response.json())
	.then(response => console.log(response))
	.catch(err => console.error(err));