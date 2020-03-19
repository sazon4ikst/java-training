package by.epam.bakery.dao.api;

import by.epam.bakery.dao.exception.DaoException;
import by.epam.bakery.domain.FeedBack;

public interface FeedBackDao extends Dao<FeedBack> {
    void changeReview (String newReview, int feedbackId) throws DaoException;
}
