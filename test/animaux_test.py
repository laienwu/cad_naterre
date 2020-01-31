# start
import pytest

from animal import Animal, Chien


def test_empty_init():
    with pytest.raises(TypeError):
        Animal()


def test_wrong_init():
    with pytest.raises(ValueError):
        Animal('Youpi', 'lalala')



def test_init():
    youpi = Animal('Youpi', 600)
    assert youpi.masse == 600
    assert youpi.vivant
    assert youpi.estVivant()
    assert not youpi.empoisonne


def test_str():
    youpi = Animal('Youpi', 600)
    assert str(youpi) == 'Youpi (600.0 kg)'


def test_mort():
    youpi = Animal('Youpi', 600)
    assert youpi.estVivant()
    youpi.mourir()
    assert not youpi.estVivant()


def test_mange():
    medor = Animal('Medor', 600)
    kiki = Animal('Kiki', 20)
    medor(kiki)  # Médor mange Kiki
    assert medor.estVivant()
    assert not kiki.estVivant()
    assert kiki.masse == 0
    assert medor.masse == 620
    kiki = Animal("Kiki Jr.", 20)
    kiki(medor)  # Kiki Jr. mange Médor
    assert not medor.estVivant()
    assert kiki.estVivant()
    assert kiki.masse == 22
    assert medor.masse == 618  # Médor a perdu du poids en se faisant manger!


def test_init_chien():
    medor = Chien('Medor', 600)
    assert isinstance(medor, Animal)
    assert isinstance(medor, Chien)
    assert medor.odorat == 0.5
    assert str(medor) == 'Medor (Chien, 600.0 kg)'
    assert medor.estVivant()


def test_masse():
    a1 = Animal('a1', 10)
    a2 = Animal('a2', 20)
    a3 = Animal('a2', 10)
    assert a1 < a2
    assert a1 == a3
