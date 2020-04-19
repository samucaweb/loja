<?php
class Options extends Model {

	public function getName($id) {
		$sql = "SELECT name FROM options WHERE id = :id";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":id", $id);
		$sql->execute();

		if($sql->rowCount() > 0) {
			$sql = $sql->fetch();
			return $sql['name'];
		}
	}
	
public function getOPSize($id){
$array = array();
	$sql = "SELECT * FROM options_size WHERE id_product = :id";
	$sql = $this->db->prepare($sql);
	$sql->bindValue(":id", $id);
	$sql->execute();
	if($sql->rowCount() > 0){
		$array = $sql->fetchAll();

	}
	return $array;
	
}

public function getSize2($id){
	$array = array();

		$sql = "SELECT stock_size FROM options_size WHERE id_product = :id";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":id", $id);
		$sql->execute();
		if($sql->rowCount() > 0){
			$array = $sql->fetch();
		}

	return $array;
	

}


public function getSize($id){
	$array = array();

		$sql = "SELECT * FROM options_size WHERE id_product = :id";
		$sql = $this->db->prepare($sql);
		$sql->bindValue(":id", $id);
		$sql->execute();
		if($sql->rowCount() > 0){
			$array = $sql->fetchAll(\PDO::FETCH_ASSOC);
		}

	return $array;
}



}