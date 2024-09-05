<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

	<xsl:output method="html" indent="yes" encoding="utf-8"/>

	<xsl:template match="/">
		<h1>Sugupuu</h1>
		<table border="1">
			<thead>
				<tr>
					<th>nimi</th>
					<th>synniaasta</th>
					<th>synnikoht</th>
					<th>lapsed</th>
				</tr>
			</thead>
			<tbody>
				<!-- Проходим по каждому человеку в семейном дереве -->
				<xsl:for-each select="sugupuu/inimene">
					<tr>
						<td>
							<xsl:value-of select="nimi"/>
						</td>
						<td>
							<xsl:value-of select="synniaasta"/>
						</td>
						<td>
							<xsl:value-of select="synnikoht"/>
						</td>
						<td>
							<table border="1">
								<thead>
									<tr>
										<th>lapse nimi</th>
										<th>lapse synniaasta</th>
										<th>Lapse synnikoht</th>
									</tr>
								</thead>
								<tbody>
									<!-- Вложенная таблица для детей -->
									<xsl:for-each select="lapsed/inimene">
										<tr>
											<td>
												<xsl:value-of select="nimi"/>
											</td>
											<td>
												<xsl:value-of select="synniaasta"/>
											</td>
											<td>
												<xsl:value-of select="synnikoht"/>
											</td>
											<td>
												<table border="1">
													<thead>
														<tr>
															<th>lapse nimi</th>
															<th>lapse synniaasta</th>
															<th>Lapse synnikoht</th>
														</tr>
													</thead>
													<tbody>
														<!-- Вложенная таблица для детей -->
														<xsl:for-each select="lapsed/inimene">
															<tr>
																<td>
																	<xsl:value-of select="nimi"/>
																</td>
																<td>
																	<xsl:value-of select="synniaasta"/>
																</td>
																<td>
																	<xsl:value-of select="synnikoht"/>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
											</td>
										</tr>
									</xsl:for-each>
								</tbody>
							</table>
						</td>
					</tr>
				</xsl:for-each>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>
