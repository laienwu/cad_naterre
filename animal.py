class Animal(object):  # *object* est la classe dont dérivent toutes les autres

    """
    Classe définissant un `Animal`, caractérisé par son nom et son
    poids.
    """

    def __init__(self, nom, masse):
        """
        Méthode d'instanciation à partir d'un nom (str) et d'un poids (float).
        """
        # Ici, convertir les paramètres pour être sûr qu'il ont le bon
        # type. On utilisera `str` et `float`
        self.nom = nom
        self.masse = float(masse)

        self.vivant = True  # Les animaux sont vivant à l'instantiation
        self.empoisonne = False  # Animal empoisonné?

    def __str__(self):
        """
        Surcharge de l'opérateur `str`: l'affichage *informel* de l'objet
        dans l'interpréteur, p.ex. `print self` sera résolu comme
        `self.__str__()`

        Retourne une chaîne de caractères.
        """

        return f"{self.nom} ({self.masse} kg)"

    def estVivant(self):
        """Méthode booléenne, vraie si l'animal est vivant."""
        return self.vivant

    def mourir(self):
        """Change l'état interne de l'objet (ne retourne rien)."""
        self.vivant = False
        pass

    #def __cmp__(self, other):
        """
        Surcharge des opérateurs de comparaison, sur la base de la masse
        des animaux.
        """
        #pass

    def __lt__(self, other):
        return self.masse < other.masse

    def __le__(self, other):
        return self.masse <= other.masse

    def __gt__(self, other):
        return self.masse > other.masse

    def __ge__(self, other):
        return self.masse >= other.masse

    def __eq__(self, other):
        return not self.masse < other.masse and not other.masse < self.masse

    def __ne__(self, other):
        return self.masse > other.masse or self.masse < other.masse

    def __call__(self, other):
        """
        Surcharge de l'opérateur '()' pour manger un autre animal (qui
        meurt s'il est vivant) et prendre du poids (mais pas plus que
        la masse de l'autre ou 10% de son propre poids).  Attention aux
        animaux empoisonnés!

        L'instruction `self(other)` sera résolue comme
        `self.__call__(other).
        """
        other.mourir()
        masse_transfert = min(self.masse * 0.1, other.masse)
        self.masse += masse_transfert
        other.masse -= masse_transfert
        if other.empoisonne: self.empoisonne = other.empoisonne

        pass


class Chien(Animal):
    """
    Un `Chien` hérite de `Animal` avec des méthodes additionnelles
    (p.ex. l'aboyement et l'odorat).
    """

    def __init__(self, nom, masse=20, odorat=0.5):
        """Définit un chien plus ou moins fin limier."""

        # Initialisation de la classe parente
        super().__init__(nom, masse)

        # Attribut propre à la classe dérivée
        self.odorat = float(odorat)

    def aboyer(self):
        """Une méthode bien spécifique aux chiens."""

        print("Ouaf ! Ouaf !")

    def estVivant(self):
        """Quand on vérifie qu'un chien est vivant, il aboie."""

        vivant = self.vivant
        if vivant:
            self.aboyer()
        return vivant

    def __str__(self):
        """
        Surcharge de l'opérateur `str`: l'affichage *informel* de l'objet
        dans l'interpréteur, p.ex. `print self` sera résolu comme
        `self.__str__()`

        Retourne une chaîne de caractères.
        """

        return f"{self.nom} ({self.__class__.__name__}, {self.masse} kg)"
