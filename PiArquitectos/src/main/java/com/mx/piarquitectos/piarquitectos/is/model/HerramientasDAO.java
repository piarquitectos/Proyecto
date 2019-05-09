/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mx.piarquitectos.piarquitectos.is.model;

import com.mx.piarquitectos.piarquitectos.is.mapeo.Herramientas;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author 52558
 */
public class HerramientasDAO {
    /*Sesion para conectarnos a la base de datos*/

    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void guardar(Herramientas herramientas) {
        //se inicia la sesion
        Session session = sessionFactory.openSession();
        //la transaccion a relizar
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            //guardamos el usuario
            session.persist(herramientas);

            tx.commit();
        } catch (Exception e) {
            //Se regresa a un estado consistente 
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            //cerramos simpre la sesion
            session.close();
        }
    }

    /**
     * Elimina el herramientas de la base de datos
     *
     * @param herramientas el usuario a eliminar
     */
    public void eliminar(Herramientas herramientas) {
        Session session = sessionFactory.openSession();
        //la transaccion a relizar
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            //eliminamos el usuario
            session.delete(herramientas);

            tx.commit();
        } catch (Exception e) {
            //Se regresa a un estado consistente 
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            //cerramos siempre la sesion
            session.close();
        }
    }

    /**
     * Actualiza el herramientas en la base de datos
     *
     * @param herramientas con los nuevos valores
     */
    public void actualizar(Herramientas herramientas) {
        Session session = sessionFactory.openSession();
        //la transaccion a relizar
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            //actualizar el usuario
            session.update(herramientas);

            tx.commit();
        } catch (Exception e) {
            //Se regresa a un estado consistente 
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            //cerramos siempre la sesion
            session.close();
        }
    }

    /**
     * Regresa la lista de todos las herramientas en la base de datos
     *
     * @return la lista que contiene a todos las herramientas de la base de datos
     */
    public List<Herramientas> getherramientas() {
        List<Herramientas> result = null;
        Session session = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            String hql = "FROM Herramientas";
            Query query = session.createQuery(hql);
            result = (List<Herramientas>) query.list();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return result;
    }

    public Herramientas getUsuario(String modelo) {
        Herramientas result = null;
        Session s = sessionFactory.openSession();
        Transaction tx = null;
        try {
            tx = s.beginTransaction();
            String hql = "FROM Herramientas WHERE modelo = :modelo";
            Query query = s.createQuery(hql);
            query.setParameter("modelo", modelo);
            result = (Herramientas) query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            s.close();
        }
        return result;
    }

}
