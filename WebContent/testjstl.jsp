<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>


<%
  /* Cr�ation de la liste et des donn�es */
  List<Map<String, String>> maListe = new ArrayList<Map<String, String>>();
  Map<String, String> news = new HashMap<String, String>();
  news.put("titre", "Titre de ma premi�re news");
  news.put("contenu", "corps de ma premi�re news");
  maListe.add(news);
  news = new HashMap<String, String>();
  news.put("titre", "Titre de ma seconde news");
  news.put("contenu", "corps de ma seconde news");
  maListe.add(news);
  pageContext.setAttribute("maListe", maListe);
%>

<div class="news">
  <div class="titreNews">
      Titre de ma premi�re news
  </div>
  <div class="corpsNews">
      corps de ma premi�re news
  </div>
</div>

<div class="news">
  <div class="titreNews">
      Titre de ma seconde news
  </div>
  <div class="corpsNews">
      corps de ma seconde news
  </div>
</div>


<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Test</title>
	</head>
	<body>

		
		<!-- test de comparaison pour jstl -->    
 <c:set var="Champion" value="4" />
 <c:set var="SuperStar" value="3" />
 <c:set var="Star" value="2" />
 <c:set var="Klammon" value="4" />   
  <c:set var="Jeanbob" value="3" />
  
<c:if test="${Klammon > Jeanbob}" > 
	<c:out value="Klammon est superieur � Jeanbob" />
</c:if>
	
<c:if test="${Klammon < Jeanbob}" > 
 	<c:out value="Klammon est inferieur � Jeanbob" />
</c:if>
<!-- Tableau de nombres -->
<table>
<c:forEach var="i" begin="0" end="10" step="1">
  <tr>
    <td><c:out value="${i}"/></td>
    <td><c:out value="${i * i * i}"/></td>
  </tr>
</c:forEach>
</table>

<!-- Truc qui cr�e les deux tableaux -->
<c:forEach items="${maListe}" var="news" varStatus="status">
<div class="news">
  News n� <c:out value="${status.count}"/> :
  <div class="titreNews">
      <c:out value="${news['titre']}" />
  </div>
  <div class="corpsNews">
      <c:out value="${news['contenu']}" />
  </div>
</div>
</c:forEach>




	</body>
</html>