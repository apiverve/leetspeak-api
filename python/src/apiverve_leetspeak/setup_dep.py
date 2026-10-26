from setuptools import setup, find_packages

setup(
    name='apiverve_leetspeak',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Leet Speak translates plain text into leet speak or reverses obfuscated strings back to standard words. Submit any string with an encode or decode mode to receive the converted text and a count of changed characters.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/leetspeak?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
