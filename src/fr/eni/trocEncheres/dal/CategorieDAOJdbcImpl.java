package fr.eni.trocEncheres.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import fr.eni.trocEncheres.BusinessException;
import fr.eni.trocEncheres.bo.Categorie;

/**
 * Implémentation de l'interface CategorieDAO
 * @author damien
 *
 */
public class CategorieDAOJdbcImpl implements CategorieDAO{
	private static final String INSERT_CATEGORIE = "INSERT INTO categories (libelle) VALUES(?)";
	private static final String DELETE_CATEGORIE = "DELETE FROM categories WHERE no_categorie = ?";
	private static final String GET_CATEGORIE = "SELECT * FROM categories WHERE no_categorie = ?";
	private static final String GET_CATEGORIES = "SELECT * FROM categories ORDER BY libelle";

	@Override
	public List<Categorie> getCategories() throws BusinessException{
		List<Categorie> categories = new ArrayList<Categorie>();
		try {
			Connection cnx = ConnecteurBDD.getConnection();
			Statement stmt = cnx.createStatement();
			ResultSet rs = stmt.executeQuery(GET_CATEGORIES);
			while(rs.next()) {
				Categorie c = new Categorie(rs.getString("libelle"));
				c.setNoCategorie(rs.getInt("no_categorie"));
				categories.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categories;
	}

	@Override
	public Categorie getCategorieById(int id) throws BusinessException{
		BusinessException BExc;
		BExc = new BusinessException();
		if (id==0) {
			BExc.ajouterErreur("vous devez saisir le n� de la cat�gorie");
			throw BExc;
		}
		Categorie categorie = new Categorie();
		try {
			Connection cnx = ConnecteurBDD.getConnection();
			try {
				PreparedStatement pstmt = cnx.prepareStatement(GET_CATEGORIE);
				pstmt.setInt(1, id);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					categorie.setNoCategorie(rs.getInt("no_categorie"));
					categorie.setLibelle(rs.getString("libelle"));
				}
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
				BExc.ajouterErreur(e.getMessage());
			}
		} catch (SQLException e) {
			e.printStackTrace();
			BExc.ajouterErreur(e.getMessage());
		}
		return categorie;
	}

	@Override
	public Categorie ajouterCategorie(Categorie categorie) throws BusinessException {
		BusinessException BExc = new BusinessException();
		if (categorie.getLibelle()==null) {
			BExc.ajouterErreur("vous devez saisir un libell� de cat�gorie pour pouvoir l'ajouter � la base de donn�e");
		}
		try {
			Connection cnx = ConnecteurBDD.getConnection();
			try {
				cnx.setAutoCommit(false);
				PreparedStatement pstmt = cnx.prepareStatement(INSERT_CATEGORIE, PreparedStatement.RETURN_GENERATED_KEYS);
				pstmt.setString(1, categorie.getLibelle());
				pstmt.executeUpdate();
				ResultSet rs;
				rs = pstmt.getGeneratedKeys();
				if(rs.next()) {
					categorie.setNoCategorie(rs.getInt(1));
				}
				rs.close();
				pstmt.close();
				cnx.commit();
			} catch (Exception e) {
				e.printStackTrace();
				cnx.rollback();
				BExc.ajouterErreur(ExceptionsDAL.BDD_ERREUR_TRAITEMENT);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			BExc.ajouterErreur(ExceptionsDAL.BDD_ERREUR_CONNEXION);
		}
		return categorie;
	}

	@Override
	public void supprimerCategorie(int id) throws BusinessException{
		BusinessException BExc = new BusinessException();
		if (id==0) {
			BExc.ajouterErreur("vous devez saisir un libell� de cat�gorie pour pouvoir l'ajouter � la base de donn�e");
		}
		try {
			Connection cnx = ConnecteurBDD.getConnection();
			try {
				cnx.setAutoCommit(false);
				PreparedStatement pstmt = cnx.prepareStatement(DELETE_CATEGORIE);
				pstmt.setInt(1, id);
				pstmt.executeUpdate();
				pstmt.close();
				cnx.commit();
			} catch (Exception e) {
				e.printStackTrace();
				cnx.rollback();
				BExc.ajouterErreur(ExceptionsDAL.BDD_ERREUR_TRAITEMENT);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			BExc.ajouterErreur(ExceptionsDAL.BDD_ERREUR_CONNEXION);
		}
	}

}
