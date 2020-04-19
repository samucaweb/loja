<?php
class Rates extends Model {

	public function getRates($id, $qt) {
		$array = array();

		$sql = "SELECT
		*,
		(select users.name from users where users.id = rates.id_user) as user_name
		FROM rates
		WHERE id_product = :id
		ORDER BY date_rated DESC
		LIMIT ".$qt;

		$sql = $this->db->prepare($sql);
		$sql->bindValue(":id", $id);
		$sql->execute();

		if($sql->rowCount() > 0) {
			$array = $sql->fetchAll();
		}


		return $array;
	}
	public function add_av($title, $id_product, $id_user, $points, $comment){

		$sql = "INSERT INTO rates (title, id_product, id_user, date_rated, points, comment) VALUES (:title, :id_product, :id_user, NOW(), :points, :comment)";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":title", $title);
		$sql->bindValue(":id_product", $id_product);
		$sql->bindValue(":id_user", $id_user);
		$sql->bindValue(":points", $points);
		$sql->bindValue(":comment", $comment);
		$sql->execute();
		
	}

}