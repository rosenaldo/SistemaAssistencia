<?php 

//verificar se ele tem a permissão de estar nessa página
if(@$home == 'ocultar'){
    echo "<script>window.location='../index.php'</script>";
    exit();
}

//total de clientes
$query = $pdo->query("SELECT * from clientes ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_clientes = @count($res);

//total de os
$query = $pdo->query("SELECT * from os where status = 'Aberta' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$os_abertas = @count($res);

//total de orcamentos
$query = $pdo->query("SELECT * from orcamentos where status = 'Pendente' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$orc_pendentes = @count($res);


//total receber hoje
$receber_hoje_rs = 0;
$query = $pdo->query("SELECT * from receber where data_venc = curDate() and pago = 'Não' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$receber_hoje = @count($res);
	if($receber_hoje > 0){
		for($i=0; $i < $receber_hoje; $i++){			
			$valor = $res[$i]['valor'];
			$receber_hoje_rs +=	$valor;

			}
		}	
$receber_hoje_rsF = number_format($receber_hoje_rs, 2, ',', '.');


//total pagar hoje
$pagar_hoje_rs = 0;
$query = $pdo->query("SELECT * from pagar where data_venc = curDate() and pago = 'Não' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$pagar_hoje = @count($res);
	if($pagar_hoje > 0){
		for($i=0; $i < $pagar_hoje; $i++){			
			$valor = $res[$i]['valor'];
			$pagar_hoje_rs +=	$valor;

			}
		}	
$pagar_hoje_rsF = number_format($pagar_hoje_rs, 2, ',', '.');






//total vendas hoje
$vendas_hoje_rs = 0;
$query = $pdo->query("SELECT * from receber where data_pgto = curDate() and pago = 'Sim' and referencia = 'Venda' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$vendas_hoje = @count($res);
	if($vendas_hoje > 0){
		for($i=0; $i < $vendas_hoje; $i++){			
			$valor = $res[$i]['valor'];
			$vendas_hoje_rs +=	$valor;

			}
		}	
$vendas_hoje_rsF = number_format($vendas_hoje_rs, 2, ',', '.');





//total receber pendentes
$receber_pendentes = 0;
$query = $pdo->query("SELECT * from receber where data_venc < curDate() and pago = 'Não' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$receber_pendente = @count($res);
	if($receber_pendente > 0){
		for($i=0; $i < $receber_pendente; $i++){			
			$valor = $res[$i]['valor'];
			$receber_pendentes +=	$valor;

			}
		}	
$receber_pendentesF = number_format($receber_pendentes, 2, ',', '.');


//total pagar pendentes
$pagar_pendentes = 0;
$query = $pdo->query("SELECT * from pagar where data_venc < curDate() and pago = 'Não' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$pagar_pendente = @count($res);
	if($pagar_pendente > 0){
		for($i=0; $i < $pagar_pendente; $i++){			
			$valor = $res[$i]['valor'];
			$pagar_pendentes +=	$valor;

			}
		}	
$pagar_pendentesF = number_format($pagar_pendentes, 2, ',', '.');




//total de os atrasadas
$query = $pdo->query("SELECT * from os where data_entrega < curDate() and status != 'Entregue' and status != 'Finalizada'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$os_atrasadas = @count($res);


//total de os atrasadas
$query = $pdo->query("SELECT * from os where data_entrega = curDate()");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$os_entregas_hoje = @count($res);



//total de produtos estoque baixo
$query = $pdo->query("SELECT * from produtos where estoque <= nivel_estoque");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_estoque = @count($res);


//total de orçamentos no mês
$query = $pdo->query("SELECT * from orcamentos where data >= '$data_mes' and data <= curDate()");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_orc_mes = @count($res);

//total de orçamentos no mês aprovados
$query = $pdo->query("SELECT * from orcamentos where data >= '$data_mes' and data <= curDate() and status = 'Aprovado'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_orc_mes_aprovados = @count($res);

if($total_orc_mes > 0 and $total_orc_mes_aprovados > 0){
    $porcentagem_orc = ($total_orc_mes_aprovados / $total_orc_mes) * 100;
}else{
    $porcentagem_orc = 0;
}




//total de os no mês
$query = $pdo->query("SELECT * from os where data >= '$data_mes' and data <= curDate()");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_os_mes = @count($res);

//total de os no mês aprovados
$query = $pdo->query("SELECT * from os where data >= '$data_mes' and data <= curDate() and status = 'Entregue'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_os_mes_aprovados = @count($res);

if($total_os_mes > 0 and $total_os_mes_aprovados > 0){
    $porcentagem_os = ($total_os_mes_aprovados / $total_os_mes) * 100;
}else{
    $porcentagem_os = 0;
}




//total de contas receber no mês
$query = $pdo->query("SELECT * from receber where data_venc >= '$data_mes' and data_venc <= '$data_final_mes'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_receber_mes = @count($res);

//total de os no mês aprovados
$query = $pdo->query("SELECT * from receber where data_venc >= '$data_mes' and data_venc <= '$data_final_mes' and pago = 'Sim'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total_receber_mes_pagas = @count($res);

if($total_receber_mes > 0 and $total_receber_mes_pagas > 0){
    $porcentagem_receber = ($total_receber_mes_pagas / $total_receber_mes) * 100;
}else{
    $porcentagem_receber = 0;
}





//grafico de linhas
$meses = 6;
$data_inicio_mes_atual = $ano_atual.'-'.$mes_atual.'-01';
$data_inicio_apuracao = date('Y-m-d', strtotime("-$meses months",strtotime($data_inicio_mes_atual)));
$datas_apuracao = '';
$nome_mes = '';
$datas_apuracao_final = '';

$total_receber_final = '';
$total_pagar_final = '';
for($cont=0; $cont<$meses; $cont++){

	$datas_apuracao = date('Y-m-d', strtotime("+$cont months",strtotime($data_inicio_apuracao)));

	$mes = date('m', strtotime($datas_apuracao));
	$ano = date('Y', strtotime($datas_apuracao));

	if($mes == '01'){
		$nome_mes = 'Janeiro';
	}

	if($mes == '02'){
		$nome_mes = 'Fevereiro';
	}

	if($mes == '03'){
		$nome_mes = 'Março';
	}

	if($mes == '04'){
		$nome_mes = 'Abril';
	}

	if($mes == '05'){
		$nome_mes = 'Maio';
	}

	if($mes == '06'){
		$nome_mes = 'Junho';
	}

	if($mes == '07'){
		$nome_mes = 'Julho';
	}

	if($mes == '08'){
		$nome_mes = 'Agosto';
	}

	if($mes == '09'){
		$nome_mes = 'Setembro';
	}

	if($mes == '10'){
		$nome_mes = 'Outubro';
	}

	if($mes == '11'){
		$nome_mes = 'Novembro';
	}

	if($mes == '12'){
		$nome_mes = 'Dezembro';
	}

	if($mes == '04' || $mes == '06' || $mes == '09' || $mes == '11'){
		$data_final_mes = '30';
	}else if($mes == '2'){
		$data_final_mes = '28';
	}else{
		$data_final_mes = '31';
	}
	
	$data_final_mes_completa = $ano.'-'.$mes.'-'.$data_final_mes;	
	//percorrer os meses totalizando os valores

$query = $pdo->query("SELECT * from receber where data_pgto >= '$datas_apuracao' and data_pgto<= '$data_final_mes_completa' and pago = 'Sim'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total = @count($res);
$total_receber = 0;
$total_receberF = 0;
if($total > 0){
	for($i=0; $i<$total; $i++){		
		$valor = $res[$i]['valor'];
		$total_receber += $valor;		
	}
}


$query = $pdo->query("SELECT * from pagar where data_pgto >= '$datas_apuracao' and data_pgto<= '$data_final_mes_completa' and pago = 'Sim'");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total = @count($res);
$total_pagar = 0;
$total_pagarF = 0;
if($total > 0){
	for($i=0; $i<$total; $i++){		
		$valor = $res[$i]['valor'];
		$total_pagar += $valor;		
	}
}

	
		$total_receber_final .= $total_receber.'*';		
		$total_pagar_final .= $total_pagar.'*';
		

	$datas_apuracaoF = implode('/', array_reverse(explode('-', $datas_apuracao)));

	$datas_apuracao_final .= $nome_mes.'*';
}	

 ?>

 <?php 
// [Seu código PHP existente permanece o mesmo]
?>

<div class="main-page margem_mobile">

    <?php if($ativo_sistema == ''){ ?>
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
        <i class="fa fa-info-circle mr-2"></i> <strong>Aviso:</strong> Prezado Cliente, não identificamos o pagamento de sua última mensalidade. Entre em contato conosco para regularizar.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <?php } ?>

    <!-- Cards Resumo -->
    <div class="dashboard-summary-cards">
        <div class="summary-card bg-danger">
            <div class="card-icon">
                <i class="fa fa-dollar-sign"></i>
            </div>
            <div class="card-content">
                <span class="card-title">Pagar Hoje</span>
                <h3>R$ <?php echo $pagar_hoje_rsF ?></h3>
                <small><?php echo $pagar_hoje ?> contas</small>
            </div>
            <a href="pagar" class="card-link"><i class="fa fa-arrow-right"></i></a>
        </div>

        <div class="summary-card bg-success">
            <div class="card-icon">
                <i class="fa fa-money-bill-wave"></i>
            </div>
            <div class="card-content">
                <span class="card-title">Receber Hoje</span>
                <h3>R$ <?php echo $receber_hoje_rsF ?></h3>
                <small><?php echo $receber_hoje ?> contas</small>
            </div>
            <a href="receber" class="card-link"><i class="fa fa-arrow-right"></i></a>
        </div>

        <div class="summary-card bg-primary">
            <div class="card-icon">
                <i class="fa fa-file-invoice-dollar"></i>
            </div>
            <div class="card-content">
                <span class="card-title">Orçamentos</span>
                <h3><?php echo $orc_pendentes ?></h3>
                <small>Pendentes</small>
            </div>
            <a href="orcamentos" class="card-link"><i class="fa fa-arrow-right"></i></a>
        </div>

        <div class="summary-card bg-warning">
            <div class="card-icon">
                <i class="fa fa-boxes"></i>
            </div>
            <div class="card-content">
                <span class="card-title">Estoque</span>
                <h3><?php echo $total_estoque ?></h3>
                <small>Itens baixos</small>
            </div>
            <a href="estoque" class="card-link"><i class="fa fa-arrow-right"></i></a>
        </div>
    </div>

    <!-- Gráficos Principais -->
    <div class="dashboard-charts-container">
        <!-- Gráfico de Linhas -->
        <div class="chart-card">
            <div class="chart-header">
                <h4><i class="fa fa-chart-line mr-2"></i>Recebimentos vs Despesas (6 meses)</h4>
                <div class="chart-legend">
                    <span class="legend-item"><i class="fa fa-circle text-success"></i> Recebimentos</span>
                    <span class="legend-item"><i class="fa fa-circle text-danger"></i> Despesas</span>
                </div>
            </div>
            <div class="chart-body">
                <canvas id="financeChart"></canvas>
            </div>
        </div>

        <!-- Gráfico de Pizza -->
        <div class="chart-card">
            <div class="chart-header">
                <h4><i class="fa fa-chart-pie mr-2"></i>Performance do Mês</h4>
            </div>
            <div class="chart-body pie-chart-container">
                <div class="pie-chart-wrapper">
                    <canvas id="performanceChart"></canvas>
                </div>
                <div class="pie-chart-legend">
                    <div class="legend-item">
                        <span class="color-indicator bg-info"></span>
                        <span class="legend-label">Orçamentos (<?php echo round($porcentagem_orc, 1) ?>%)</span>
                    </div>
                    <div class="legend-item">
                        <span class="color-indicator bg-primary"></span>
                        <span class="legend-label">OS (<?php echo round($porcentagem_os, 1) ?>%)</span>
                    </div>
                    <div class="legend-item">
                        <span class="color-indicator bg-success"></span>
                        <span class="legend-label">Recebimentos (<?php echo round($porcentagem_receber, 1) ?>%)</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Cards Secundários -->
    <div class="dashboard-secondary-cards">
        <div class="secondary-card">
            <div class="card-icon bg-dark">
                <i class="fa fa-users"></i>
            </div>
            <div class="card-content">
                <h5>Clientes</h5>
                <h2><?php echo $total_clientes ?></h2>
            </div>
        </div>

        <div class="secondary-card">
            <div class="card-icon bg-danger">
                <i class="fa fa-exclamation-triangle"></i>
            </div>
            <div class="card-content">
                <h5>OS Atrasadas</h5>
                <h2><?php echo $os_atrasadas ?></h2>
            </div>
        </div>

        <div class="secondary-card">
            <div class="card-icon bg-info">
                <i class="fa fa-truck"></i>
            </div>
            <div class="card-content">
                <h5>Entregas Hoje</h5>
                <h2><?php echo $os_entregas_hoje ?></h2>
            </div>
        </div>

        <div class="secondary-card">
            <div class="card-icon bg-success">
                <i class="fa fa-shopping-cart"></i>
            </div>
            <div class="card-content">
                <h5>Vendas Hoje</h5>
                <h2>R$ <?php echo $vendas_hoje_rsF ?></h2>
            </div>
        </div>
    </div>

</div>

<!-- Chart.js CDN -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>

<script>
// Gráfico de Linhas - Recebimentos vs Despesas
const financeCtx = document.getElementById('financeChart').getContext('2d');
const financeChart = new Chart(financeCtx, {
    type: 'line',
    data: {
        labels: <?php echo json_encode(explode('*', trim($datas_apuracao_final, '*'))) ?>,
        datasets: [
            {
                label: 'Recebimentos',
                data: <?php echo json_encode(explode('*', trim($total_receber_final, '*'))) ?>,
                borderColor: '#28a745',
                backgroundColor: 'rgba(40, 167, 69, 0.1)',
                borderWidth: 2,
                tension: 0.3,
                fill: true,
                pointBackgroundColor: '#fff',
                pointBorderColor: '#28a745',
                pointBorderWidth: 2,
                pointRadius: 4,
                pointHoverRadius: 6
            },
            {
                label: 'Despesas',
                data: <?php echo json_encode(explode('*', trim($total_pagar_final, '*'))) ?>,
                borderColor: '#dc3545',
                backgroundColor: 'rgba(220, 53, 69, 0.1)',
                borderWidth: 2,
                tension: 0.3,
                fill: true,
                pointBackgroundColor: '#fff',
                pointBorderColor: '#dc3545',
                pointBorderWidth: 2,
                pointRadius: 4,
                pointHoverRadius: 6
            }
        ]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: {
                display: false
            },
            tooltip: {
                backgroundColor: '#fff',
                titleColor: '#333',
                bodyColor: '#333',
                borderColor: '#ddd',
                borderWidth: 1,
                padding: 12,
                usePointStyle: true,
                callbacks: {
                    label: function(context) {
                        return context.dataset.label + ': R$ ' + context.raw.toLocaleString('pt-BR');
                    }
                }
            }
        },
        scales: {
            x: {
                grid: {
                    display: false
                },
                ticks: {
                    color: '#6c757d'
                }
            },
            y: {
                grid: {
                    color: 'rgba(0, 0, 0, 0.05)'
                },
                ticks: {
                    color: '#6c757d',
                    callback: function(value) {
                        return 'R$ ' + value.toLocaleString('pt-BR');
                    }
                }
            }
        }
    }
});

// Gráfico de Pizza - Performance do Mês
const performanceCtx = document.getElementById('performanceChart').getContext('2d');
const performanceChart = new Chart(performanceCtx, {
    type: 'doughnut',
    data: {
        labels: ['Orçamentos', 'OS', 'Recebimentos'],
        datasets: [{
            data: [<?php echo $porcentagem_orc ?>, <?php echo $porcentagem_os ?>, <?php echo $porcentagem_receber ?>],
            backgroundColor: ['#17a2b8', '#007bff', '#28a745'],
            borderWidth: 0,
            cutout: '70%'
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
            legend: {
                display: false
            },
            tooltip: {
                callbacks: {
                    label: function(context) {
                        return context.label + ': ' + context.raw.toFixed(1) + '%';
                    }
                }
            },
            datalabels: {
                formatter: (value) => {
                    return value > 5 ? value.toFixed(1) + '%' : '';
                },
                color: '#fff',
                font: {
                    weight: 'bold'
                }
            }
        }
    },
    plugins: [ChartDataLabels]
});
</script>

<style>
/* Layout Principal */
.main-page {
    padding: 20px;
    max-width: 1600px;
    margin: 0 auto;
}

/* Cards de Resumo */
.dashboard-summary-cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
    gap: 20px;
    margin-bottom: 30px;
}

.summary-card {
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
    padding: 20px;
    display: flex;
    align-items: center;
    position: relative;
    overflow: hidden;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    border-left: 4px solid;
}

.summary-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
}

.summary-card.bg-danger {
    border-left-color: #dc3545;
    background: linear-gradient(135deg, rgba(220, 53, 69, 0.1) 0%, rgba(220, 53, 69, 0.05) 100%);
}

.summary-card.bg-success {
    border-left-color: #28a745;
    background: linear-gradient(135deg, rgba(40, 167, 69, 0.1) 0%, rgba(40, 167, 69, 0.05) 100%);
}

.summary-card.bg-primary {
    border-left-color: #007bff;
    background: linear-gradient(135deg, rgba(0, 123, 255, 0.1) 0%, rgba(0, 123, 255, 0.05) 100%);
}

.summary-card.bg-warning {
    border-left-color: #ffc107;
    background: linear-gradient(135deg, rgba(255, 193, 7, 0.1) 0%, rgba(255, 193, 7, 0.05) 100%);
}

.card-icon {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 15px;
    color: white;
    font-size: 20px;
    flex-shrink: 0;
}

.card-content {
    flex-grow: 1;
}

.card-title {
    font-size: 14px;
    color: #6c757d;
    font-weight: 500;
    display: block;
    margin-bottom: 5px;
}

.summary-card h3 {
    font-size: 24px;
    font-weight: 700;
    margin: 0;
    color: #343a40;
}

.summary-card small {
    font-size: 12px;
    color: #868e96;
}

.card-link {
    color: #adb5bd;
    font-size: 14px;
    transition: color 0.2s;
}

.summary-card:hover .card-link {
    color: #495057;
}

/* Container de Gráficos */
.dashboard-charts-container {
    display: grid;
    grid-template-columns: 2fr 1fr;
    gap: 20px;
    margin-bottom: 30px;
}

@media (max-width: 992px) {
    .dashboard-charts-container {
        grid-template-columns: 1fr;
    }
}

/* Cards de Gráficos */
.chart-card {
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
    overflow: hidden;
}

.chart-header {
    padding: 15px 20px;
    border-bottom: 1px solid #f1f1f1;
    display: flex;
    align-items: center;
    justify-content: space-between;
    flex-wrap: wrap;
}

.chart-header h4 {
    font-size: 16px;
    font-weight: 600;
    margin: 0;
    color: #495057;
    display: flex;
    align-items: center;
}

.chart-legend {
    display: flex;
    gap: 15px;
}

.legend-item {
    font-size: 13px;
    color: #6c757d;
    display: flex;
    align-items: center;
}

.legend-item i {
    margin-right: 5px;
    font-size: 10px;
}

.chart-body {
    padding: 15px;
    height: 300px;
}

.pie-chart-container {
    display: flex;
    flex-direction: column;
    height: auto;
}

.pie-chart-wrapper {
    height: 200px;
    margin-bottom: 15px;
}

.pie-chart-legend {
    display: flex;
    flex-direction: column;
    gap: 8px;
}

.pie-chart-legend .legend-item {
    display: flex;
    align-items: center;
}

.color-indicator {
    width: 12px;
    height: 12px;
    border-radius: 3px;
    margin-right: 8px;
}

.legend-label {
    font-size: 13px;
    color: #495057;
}

/* Cards Secundários */
.dashboard-secondary-cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 20px;
}

.secondary-card {
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
    padding: 20px;
    display: flex;
    align-items: center;
}

.secondary-card .card-icon {
    width: 40px;
    height: 40px;
    font-size: 16px;
    margin-right: 15px;
}

.secondary-card .card-content h5 {
    font-size: 14px;
    color: #6c757d;
    margin: 0 0 5px 0;
    font-weight: 500;
}

.secondary-card .card-content h2 {
    font-size: 22px;
    font-weight: 700;
    margin: 0;
    color: #343a40;
}

/* Responsividade */
@media (max-width: 768px) {
    .dashboard-summary-cards {
        grid-template-columns: 1fr 1fr;
    }
    
    .dashboard-secondary-cards {
        grid-template-columns: 1fr 1fr;
    }
}

@media (max-width: 576px) {
    .dashboard-summary-cards,
    .dashboard-secondary-cards {
        grid-template-columns: 1fr;
    }
    
    .chart-header {
        flex-direction: column;
        align-items: flex-start;
    }
    
    .chart-legend {
        margin-top: 10px;
    }
}
</style>